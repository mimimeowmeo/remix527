//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.7.4;
pragma abicoder v2;

contract Demo5 {
    struct Course {
        string id;
        string name;
        uint8 duration;
    }

    Course public currentCourse;

    function setCurrentCourse() public {
        currentCourse = Course("POOP", "Python OOP", 35);
    }

    function setCurrentCourse2(Course memory c) public {
        currentCourse = c;
    }

    function setCurrentCourse3(
        string memory id,
        string memory name,
        uint8 duration
    ) public {
        currentCourse.id = id;
        currentCourse.name = name;
        currentCourse.duration = duration;
    }

    function getCourseId() public view returns (string memory) {
        return currentCourse.id;
    }

    function getCourse() public view returns (Course memory) {
        return currentCourse;
    }
}
