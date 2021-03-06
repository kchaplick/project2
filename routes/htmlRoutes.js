var db = require("../models");
var _ = require("underscore");
var petfinder = require("./petfinderRoutes");
// NPM package to convert html entities for special characters (', #, < , etc.) into the actual characters.
const Entities = require('html-entities').XmlEntities;
const entities = new Entities();


module.exports = function (app) {
  // Load index page

  app.get("/", function (req, res) {
    db.Question
      .findAll({
        include: [db.Choice]
      })
      .then(function (dbQuestions) {
        res.render("index", {
          questionsAndChoices: dbQuestions
        });
      });
  });

  // // Load breed results page
  // app.get("/breedresults", function(req, res) {
  //   console.log(breedResults);
  //   db.Breed
  //     .findAll({
  //       where: {
  //         id: breedResults
  //       },
  //       include: [db.Attribute]
  //     })
  //     .then(function(data) {
  //       // console.log(data)
  //       res.render("breedresults", { returnedArray: data });
  //     });
  // });

  // Load adopt results page
  app.get("/adoptresults/:breed/:userid/:surveyid", function (req, response) {
    // petfinderRequest parameters are hardcoded for now, but will take in survey data.
    // var dogs = petfinder.petfinderRequest();
    // console.log(dogs);
    // console.log(petfinder.petfinderRequest());

    //Get the user zipcode from the param
    db.User
      .findAll({
        where: {
          id: req.params.userid
        }
      }).then(function (user) {
        console.log(user);
        var zipcode = user[0].zipcode.toString();
        console.log("zipcode is" + zipcode)
        console.log(req.params.breed);

        var breed = req.params.breed.replace(/ /g, "%20")
        var hbsDogs = {
          breed: req.params.breed,
          surveyId: req.params.surveyid,
          dogs: []
        }

        petfinder.petfinderRequest(zipcode, 25, breed).then(function (res) {
          try {
            console.log("TRY BLOCK")
            class Dog {
              constructor(name, age, photo, gender, status, website, phone, address, city, state, description) {
                this.name = entities.decode(name);
                this.age = age;
                this.photo = photo;
                this.gender = gender;
                this.status = status;
                this.website = website;
                this.phone = phone;
                this.address = address;
                this.city = city;
                this.state = state;
                this.description = entities.decode(description);
              }
            }

            var responseDogs = [];

            for (let i = 0; i < res.animals.length; i++) {
              responseDogs.push(res.animals[i]);
            }

            // console.log(responseDogs);


            // console.log(res.animals[i].photos[0].medium);
            var dogPicUrl;




            // console.log(hbsDogs.dogs);

            for (var i = 0; i < responseDogs.length; i++) {
              if (res.animals[i].photos[0].medium) {
                console.log('pic exists')
                dogPicUrl = res.animals[i].photos[0].medium;
              } else {
                console.log('no pic exists');
                dogPicUrl = 'images/dog_placeholder.jpg'
              };

              hbsDogs.dogs.push(new Dog(res.animals[i].name, res.animals[i].age, dogPicUrl, res.animals[i].gender, res.animals[i].status, res.animals[i].url, res.animals[i].contact.phone, res.animals[i].contact.address.address1, res.animals[i].contact.address.city, res.animals[i].contact.address.state, res.animals[i].description))
            }
          }
          catch (err) {
            console.log("CATCH BLOCK")
            hbsDogs = {
              breed: req.params.breed,
              surveyId: req.params.surveyid,
              dogs: []
            }
            return response.render("adopt", hbsDogs);
          }



          // console.log(hbsDogs.dogs, "Dogs");

          response.render("adopt", hbsDogs);

        })
        // console.log(hbsDogs, "after")

      });
  });



  app.get("/breedresults/:id", function (req, res) {
    var doggos;
    var survey;
    var allDogs = db.Breed
      .findAll({
        include: [db.Attribute]
      });


    //      });
    //TODO: Pass in the survey id from the on click

    var userSurvey = db.Survey
      .findOne({
        where: {
          id: req.params.id
        }
      });

    Promise
      .all([allDogs, userSurvey])
      .then(responses => {

        doggos = responses[0];
        survey = responses[1];

        // console.log(doggos);
        // console.log(survey);

        var questionToAttributeMap = {
          question1: 'Apartment Living',
          question5: 'Novice Owners',
          question2: 'Sensitivity Level',
          question6: 'Independent',
          question7: 'Affectionate',
          question3: 'Kid Friendly',
          question4: 'Dog Friendly',
          question12: 'Shedding',
          question11: 'Size',
          question10: 'Trainability',
          question8: 'Energy Level',
          question9: 'Exercise Needs'
        }

        var dogAttributes = [];

        var perfectDog = {}
        var mapKeys = Object.keys(questionToAttributeMap);
        for (var i = 0; i < mapKeys.length; i++) {
          var questionString = mapKeys[i]; // ie "question9"
          var attributeString = questionToAttributeMap[mapKeys[i]].replace(/ /g, "_").toLowerCase(); // ie 'excercise_needs'
          var valueOfAttr = survey[questionString];
          dogAttributes.push(attributeString);
          perfectDog[attributeString] = valueOfAttr;
        }
        // stub 
        function dogScoreComparison(dog1, dog2) {
          var totalDiff = 0;
          for (var i = 0; i < dogAttributes.length; i++) {
            var dogDiff = Math.abs(dog1[dogAttributes[i]] - dog2[dogAttributes[i]])
            dogDiff = Math.pow(dogDiff, 2)
            totalDiff += dogDiff
          }
          return Math.sqrt(totalDiff);
        }
        // ... dog143] SELECT * FROM breeds including attrs
        for (var z = 0; z < doggos.length; z++) {
          // format doggos to make them easy to compare
          for (i = 0; i < doggos[z].Attributes.length; i++) {
            doggos[z][doggos[z].Attributes[i].attribute.replace(/ /g, "_").toLowerCase()] = doggos[z].Attributes[i].score;
          }
        }

        // this gives you the array of dogs ordered by score
        function dogsInOrder(doggos, perfectDog) {
          var orderedDoggos = [];
          for (i = 0; i < doggos.length; i++) {
            var score = dogScoreComparison(doggos[i], perfectDog);
            orderedDoggos.push({ breed: doggos[i].breed_name, score: score })
          }

          var allSortedDogs = _.sortBy(orderedDoggos, 'score');
          // console.log(allSortedDogs)
          var firstSixDogs = [];

          for (var i = 0; i < 6; i++) {
            // firstSixDogs.push({breed_name: allSortedDogs[i].breed});
            firstSixDogs.push(allSortedDogs[i].breed)
          }
          return firstSixDogs;
        }

        var matchedDogs = dogsInOrder(doggos, perfectDog);
        db.Breed
          .findAll({
            where: {
              breed_name: {
                $in: matchedDogs
              }
            },
            include: {
              model: db.Attribute,
              limit: 4,
              where: {
                score: {
                  $gt: 3
                }
              }
            }
            // [db.Attribute],
          })
          .then(function (data) {

            // console.log(data)
            // console.log(survey)
            var dogMatchAndSurvey = {
              data: data,
              survey: survey
            }
            //  console.log(dogMatchAndSurvey.data[0])
            //  console.log(dogMatchAndSurvey);
            res.render("breedresults", dogMatchAndSurvey);
          });
      });

  });

  // Render 404 page for any unmatched routes
  app.get("*", function (req, res) {
    res.render("404");
  });







};
