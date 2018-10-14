pragma solidity^0.4.23;

contract mitsukerumonX {

  event NewSafeperson(uint id, string name, string title, uint time);

  struct Safeperson {
    string name;
    string title;
    uint time;
  }

  Safeperson[] public safepeople;

　//jqueryによってhtmlからひっぱって来られたデータを配列化し、
  function set(string _name, string _title, uint _time) public {

    uint id = safepeople.push(Safeperson(_name, _title, _time)) -1;
    emit NewSafeperson(id, _name, _title, _time);
  }

　//コントラクトからひっぱてきて、htmlに運ぶ。
  function get(uint _index) public view returns (string, string, uint) {
  return(safepeople[_index].name, safepeople[_index].title, safepeople[_index].time );
    }

    function getLength() public view returns (uint){
       return safepeople.length;
   }
}
