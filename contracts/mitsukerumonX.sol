pragma solidity^0.4.23;

contract MitsukerumonX {

  event NewSafeperson(uint id, string name, string title, uint time);

  struct Safeperson {
    string _name;
    string _title;
    uint _time;
  }

  Safeperson[] public safepeople;

  function set(string _name, string _title, uint _time) public {

    uint id = safepeople.push(Safeperson(_name, _title, _time)) -1;
    emit NewSafeperson(id, _name, _title, _time);
  }

  function get(uint _index) public view returns (string, string, uint) {
  return(safepeople[_index].name, safepeople[_index].title, safepeople[_index].time );
    }

    function getLength() public view returns (uint){
       return safepeople.length;
   }
}
