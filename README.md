# React Native Dockerize
Setting up the development environment using docker.    
## 0. Set up docker image  
```
> docker pull jungseoro/react-native 
```  
or  
```
> docker build . -t <image name> 
``` 
and modify `services name` in `docker-compose.yml`
## 1. Init react native project on docker (Optional)  
If react-native project does not exist, make it with command below and mv repo in the project.
```
> docker run -it --rm -v <PROJECT_DIR>:/vol jungseoro/react-native sh -c "cd /vol && npx react-native init <PROJECT_NAME>"
> mv react-native-dockerize <PROJECT_DIR>/<PROJECT_NAME>/
```
## 2. Fill in `.env`  
This docker supports device debugging, so you need an adb pair on the same wifi over Android OS 11.  
Please refer to [Android Developers](https://developer.android.com/studio/command-line/adb?hl=ko#connect-to-a-device-over-wi-fi-android-11+) for details.  
<img src="https://developer.android.com/studio/images/wireless-adb.png?hl=ko" width="25%" height="25%"/>
## 3. Start metro bundler  
```
> docker-compose up
```  
If the app is not installed on the device, build it with command below, otherwise run the app.
```
> docker exec -it react-native sh -c "cd /vol && npx react-native run-android"
```
## Reference  
* [React Native Document](https://reactnative.dev/docs/environment-setup)
* [React Native Community](https://github.com/react-native-community/docker-android)
* [ADB Document](https://developer.android.com/studio/command-line/adb?hl=ko)
