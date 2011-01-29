# coding: utf-8
require 'rspec'
require './bowling_score.rb'

describe BowlingScore do
  before do
    @game = BowlingScore.new
  end

  scores = {1 => 21, 2 => 42, 0 => 0, 4 => 84}

  scores.each do |key, value|
    context '全部'+key.to_s+'のとき' do
      it '#score == '+value.to_s do
        @game.score([key]*21).should == value
      end
    end
  end

  it 'スペアの計算をする' do
    @game.score([1, 4, 2, 8, 1] + [0] * 16 ).should == 17
  end
  it '10フレーム目がスペア' do
    @game.score([0]*18+[1, 9, 1]).should == 11
  end
end

