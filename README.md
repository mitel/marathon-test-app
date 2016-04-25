# marathon app test
A simple node.js app serving some static content (from `https://github.com/emccode/training/tree/master/one-day-geekweek`).
Mainly build to test a simple CI/CD pipeline with Wercker, targeting Mesosphere DC/OS and Pivotal CloudFoundry.

## Simple build & deploy to CloudFoundry

This is a manual deployment outside the Wercker pipeline.

It was tested on the Pivotal public CF instance on `http://run.pivotal.io`.

Check the runtime/cf folder for the manifest.yml. You should modify at least the name of the app.

Building for CF: `npm run cf`

Change dir into dist/cf and push it to the cloud with `cf push`

Open a browser (better be Chrome or Safari) to the web address with the suffix /devops
eg: `http://devopsday.cfapps.io/devops/`

## Build & Deploy with Mesosphere DCOS
TODO
