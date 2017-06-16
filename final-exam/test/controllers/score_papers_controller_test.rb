require 'test_helper'

class ScorePapersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @score_paper = score_papers(:one)
  end

  test "should get index" do
    get score_papers_url
    assert_response :success
  end

  test "should get new" do
    get new_score_paper_url
    assert_response :success
  end

  test "should create score_paper" do
    assert_difference('ScorePaper.count') do
      post score_papers_url, params: { score_paper: { name: @score_paper.name, score: @score_paper.score, studentID: @score_paper.studentID } }
    end

    assert_redirected_to score_paper_url(ScorePaper.last)
  end

  test "should show score_paper" do
    get score_paper_url(@score_paper)
    assert_response :success
  end

  test "should get edit" do
    get edit_score_paper_url(@score_paper)
    assert_response :success
  end

  test "should update score_paper" do
    patch score_paper_url(@score_paper), params: { score_paper: { name: @score_paper.name, score: @score_paper.score, studentID: @score_paper.studentID } }
    assert_redirected_to score_paper_url(@score_paper)
  end

  test "should destroy score_paper" do
    assert_difference('ScorePaper.count', -1) do
      delete score_paper_url(@score_paper)
    end

    assert_redirected_to score_papers_url
  end
end
