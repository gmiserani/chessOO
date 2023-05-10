public class Queen extends ChessPiece {

	public boolean legalMove(int startRow, int startColumn, int desRow,
			int desColumn, int[][] playerMatrix) {

		boolean axis = true;

		// XOR If ONE of these conditions match (if both
		// true or false then false is returned)
		if (startRow == desRow ^ startColumn == desColumn) {
			axis = true; // Moving straight along axis
		} else if (startRow != desRow && startColumn != desColumn) {
			axis = false; // Moving diagonal
		} else {
			return false;
		}
		return axisMove(startRow, startColumn, desRow, desColumn, playerMatrix,
				axis);
	}
}