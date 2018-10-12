require "test_helper"

class EmptyFrozenTest < Minitest::Test
  TEST_SUBJECTS = [
      String,
      Array,
      Hash,
      Set,
    ].freeze

  def test_that_it_has_a_version_number
    refute_nil ::EmptyFrozen::VERSION
  end

  def test_it_adds_class_method_named_empty
    TEST_SUBJECTS.each do |subject|
      assert subject.respond_to?(:empty), "#{subject} should respond to .empty"
    end
  end

  def test_empty_method_returns_a_new_empty_instance
    TEST_SUBJECTS.each do |subject|
      assert_empty subject.empty, "#{subject}.empty should return a new empty object"
      assert_equal subject, subject.empty.class, "should return instance of itself"
    end
  end

  def test_it_adds_class_method_named_empty_frozen
    TEST_SUBJECTS.each do |subject|
      assert subject.respond_to?(:empty_frozen), "#{subject} should respond to .empty_frozen"
    end
  end

  def test_empty_frozen_returns_the_same_empty_and_frozen_instance
    TEST_SUBJECTS.each do |subject|
      empty_frozen1 = subject.empty_frozen
      empty_frozen2 = subject.empty_frozen

      assert [empty_frozen1, empty_frozen2].all?(&:empty?), "instance should be empty"
      assert [empty_frozen1, empty_frozen2].all?(&:frozen?), "instance should be frozen"
      assert_equal empty_frozen1.class, empty_frozen2.class, "should only return instance of itself"
      assert_equal empty_frozen1.object_id, empty_frozen2.object_id, "should return the same frozen instance"
    end
  end
end
