require 'PRY'

class Board
	def initialize grids
		@grids = grids
	end

	def LoadBoard
		grids = IO.read("board.txt").split(" ")

	end

end

class ChessPieze
	def initialize color, origin
		@color = [white, black]
		@origin = [0,0]
		@movements = (IO.read("movements.txt")
	end


	def checkColor color
		@color.each do |color|

		end
	end



	def CheckMovement board, origin, destination
		positions = IO.read("movements.txt")
	end

end


class Roock < ChessPieze
	super movements
	def initialize
	end

end

board = Board.new(0)

board.LoadBoard

binding.pry