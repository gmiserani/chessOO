public class Bishop extends ChessPiece {

	public boolean legalMove(int startRow, int startColumn, int desRow,
			int desColumn, int[][] playerMatrix) {
		if (startRow == desRow || startColumn == desColumn) {
			// If moved straight
			return false;
		}
		return axisMove(startRow, startColumn, desRow, desColumn, playerMatrix,
				false);
	}

}