import org.aspectj.lang.annotation.Aspect;

@Aspect

public aspect WarningMessage {
	public pointcut kingMove(King king) :
		call( public boolean King.legalMove(..) ) && target(king);
	after(King king) returning(boolean legalMove) : kingMove(king) {
		if (legalMove == false) {
			king.strErrorMsg = "King can only space move one in any direction";
		}
	}

    public pointcut queenMove(Queen queen) :
        call( public boolean Queen.legalMove(..) ) && target(queen);
    after(Queen queen) returning(boolean legalMove) : queenMove(queen) {
        if (legalMove == false) {
            queen.strErrorMsg = "Queen can move in a straight line in any direction";
        }
    }

    public pointcut pawnMove(Pawn pawn) :
        call( public boolean Pawn.legalMove(..) ) && target(pawn);
    after(Pawn pawn) returning(boolean legalMove) : pawnMove(pawn) {
        if (legalMove == false) {
            pawn.strErrorMsg = "Ilegal move";
        }
    }

    public pointcut rockMove(Rock rock) :
        call( public boolean Rock.legalMove(..) ) && target(rock);
    after(Rock rock) returning(boolean legalMove) : rockMove(rock) {
        if (legalMove == false) {
            rock.strErrorMsg = "Rock can only move Horiztonal or Vertical";
        }
    }

    public pointcut knightMove(Knight knight) :
        call( public boolean Knight.legalMove(..) ) && target(knight);
    after(Knight knight) returning(boolean legalMove) : knightMove(knight) {
        if (legalMove == false) {
            knight.strErrorMsg = "Horse can only move in a L shape";
        }
    }

    public pointcut bishopMove(Bishop bishop) :
        call( public boolean Bishop.legalMove(..) ) && target(bishop);
    after(Bishop bishop) returning(boolean legalMove) : bishopMove(bishop) {
        if (legalMove == false) {
            bishop.strErrorMsg = "Bishop can only move along diagonal lines";
        }
    }
}