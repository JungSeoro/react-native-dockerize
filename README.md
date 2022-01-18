# Expo Dockerize
Setting up the development environment using docker.    
## 0. Set up docker image  
```
> docker pull jungseoro/react-expo 
```  
or  
```
> docker build . -t <image name> 
``` 
and modify `services name` in `docker-compose.yml`
## 1. Init expo project on docker (Optional)
If expo project does not exist, make it with command below and mv repo in the project.
```
> docker run -it --rm -v <PROJECT_DIR>:/vol jungseoro/react-expo sh -c "cd /vol && expo init <PROJECT_NAME>"
> mv react-native-dockerize <PROJECT_DIR>/<PROJECT_NAME>/
```
## 2. Fill in `.env`  
This docker supports device debugging, so you need expo account and app.  
Please refer to [expo for android](https://play.google.com/store/apps/details?id=host.exp.exponent&referrer=www) or [expo for ios](https://apps.apple.com/app/apple-store/id982107779) for details.  
## 3. Run project  
```
> docker-compose up
```  
After run docker, check expo app on device.  
<img src="https://user-images.githubusercontent.com/42337439/149995887-fd3c0d75-8421-452e-97f0-80b1cf00aa3b.png" width="30%" height="30%"/>
## Reference  
* [React Native Document](https://reactnative.dev/docs/environment-setup)
* [Expo](https://expo.dev/tools)
* [ADB Document](https://developer.android.com/studio/command-line/adb?hl=ko)
