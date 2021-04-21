
compile:
	javac -d ./target/classes ./src/main/java/games/Slot.java

run:
	java -cp ./target/project-root.jar games.Slot
#	jar cfe ./target/project-root.jar games.Slot -C ./target/classes .
	#java -cp ./target/classes games.Slot

clean:
	rm -rf ./target

#compile: clean
#	mkdir -p ./target/classes
	#javac -d ./target/classes ./src/main/java/games/Slot.java
update:
	 $ ./mvnw versions:update-properties
 	 $ ./mvnw versions:display-plugin-updates
# 	 java ./mvnw versions:display-plugin-updates

#compile-run: compile run
#.DEFAULT_GOAL := compile-run
build-run: build run
.DEFAULT_GOAL := build-run

build: compile
	jar cf ./target/project-root.jar -C ./target/classes .
#	jar cfe ./target/project-root.jar games.Slot -C ./target/classes .

#Переименуйте команду по умолчанию в build-run. Замените в её зависимостях действие compile на build.
