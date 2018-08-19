defmodule VaporstringTest do
  use ExUnit.Case
  doctest Vaporstring

  test "greets the world" do
    assert Vaporstring.parse("hello world!") === "ｈｅｌｌｏ　ｗｏｒｌｄ！"
  end

  test "more graphemes" do
    letters = "qwertyuiopasdfghjklzxcvbnm"
    parsed_letters = "ｑｗｅｒｔｙｕｉｏｐａｓｄｆｇｈｊｋｌｚｘｃｖｂｎｍ"
    assert Vaporstring.parse(letters) === parsed_letters
  end

  test "uppercase letters" do
    letters = "QWERTYUIOPASDFGHJKLZXCVBNM"
    parsed_letters = "ＱＷＥＲＴＹＵＩＯＰＡＳＤＦＧＨＪＫＬＺＸＣＶＢＮＭ"
    assert Vaporstring.parse(letters) === parsed_letters
  end
end
