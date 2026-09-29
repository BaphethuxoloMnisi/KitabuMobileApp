#!/bin/sh
APP_HOME=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
CLASSPATH=$APP_HOME/gradle/wrapper/gradle-wrapper.jar
if [ ! -f "$CLASSPATH" ]; then
  echo "gradle-wrapper.jar is not present in this generated package."
  echo "Open the project in Android Studio, or run 'gradle wrapper --gradle-version 9.1.0' once with a local Gradle installation."
  exit 1
fi
exec java -classpath "$CLASSPATH" org.gradle.wrapper.GradleWrapperMain "$@"
