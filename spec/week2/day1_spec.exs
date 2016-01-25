defmodule Week_2.Day_1Spec do
  use ESpec

  context ".recursive_sum_example_1" do
    describe "when zero" do
      let :zero_value, do: Week_2.Day_1.recursive_sum_example_1(0..0)

      it "returns zero" do
        expect(zero_value) |> to(eq(0))
      end
    end

    describe "with a range of numbers" do
      let :sum_value, do: Week_2.Day_1.recursive_sum_example_1(5..20)

      it "returns 200" do
        expect(sum_value) |> to(eq(200))
      end
    end
  end

  context "reduce_sum" do
    describe "when zero" do
      let :zero_value, do: Week_2.Day_1.reduce_sum(0..0)

      it "returns zero" do
        expect(zero_value) |> to(eq(0))
      end
    end

    describe "with a range of numbers" do
      let :sum_value, do: Week_2.Day_1.reduce_sum(5..20)

      it "returns 200" do
        expect(sum_value) |> to(eq(200))
      end
    end
  end

  context ".get_words" do
    let :string_of_words, do: "This, is a string of words."
    let :expected_list, do: ["This", "is", "a", "string", "of", "words"]
    let :word_list, do: Week_2.Day_1.get_words(string_of_words)

    it "returns a list of words" do
      expect(word_list) |> to(eq(expected_list))
    end
  end

  context ".map_get_words" do
    let :list_of_word_strings, do: ["hello world", "why, is", "last one"]
    let :expected_list, do: [["hello", "world"], ["why", "is"], ["last", "one"]]
    let :word_list, do: Week_2.Day_1.map_get_words(list_of_word_strings)

    it "returns a list of the mapped lists" do
      expect(word_list) |> to(eq(expected_list))
    end
  end

end
