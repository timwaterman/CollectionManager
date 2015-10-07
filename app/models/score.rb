class Score

	include Mongoid::Document

	field :schoolName, type: String
	field :numTestTakers, type: Integer
	field :readingScore, type: Integer
	field :mathScore, type: Integer
	field :writingScore, type: Integer

end
