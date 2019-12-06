import java.util.Random;
import java.util.Scanner;

public class Game {

	public static void main(String[] args) {
		int Rock = 0;
		int Scissors = 1;
		int Paper = 2;
		int WinScore = 3;
		
		Scanner scanner = new Scanner(System.in);

		Random random = new Random();
		
		System.out.println("가위 바위 보 게임 입니다.");
		System.out.print("게임을 진행하는 사용자의 이름은 무엇인가요 : ");
		
		String User = scanner.next();
		
		System.out.println("게임을 시작하겠습니다." + User + "님");
		System.out.println("바위는 0 가위는 1 보는 2입니다.");

		for (int Score = 0; Score <= 3; Score++) {
			System.out.print("가위 바위 보 중에 무엇을 낼지 결정해주세요 : ");
			int Insert = scanner.nextInt();

			int RandomRockScissorsPaper = random.nextInt(3);

			switch (RandomRockScissorsPaper) {
			case 0:
				System.out.println("상대가 바위를 냈습니다.");
				if (Insert == 0) {
					System.out.println("비겼습니다.");
					System.out.println("승리까지" + WinScore + "점 남았습니다.");
					Score = 3 - WinScore;
				} else if (Insert == 1) {
					System.out.println("졌습니다.");
					System.out.println("승리까지" + WinScore + "점 남았습니다.");
					Score = 3 - WinScore;
				} else if (Insert == 2) {
					System.out.println("현재 " + Score + "번을 이겼습니다.");
					WinScore--;
					System.out.println("승리까지" + WinScore + "점 남았습니다.");
					Score = 3 - WinScore;
				}else {
					Score--;
					System.out.println("가위 바위 보 이외의 값이 입력되어 해당 게임을 무효로 처리하겠습니다.");
					System.out.println();
				}
				System.out.println();
				break;
			case 1:
				System.out.println("상대가 가위를 냈습니다.");
				if (Insert == 0) {
					System.out.println("현재 " + Score + "번을 이겼습니다.");
					WinScore--;
					System.out.println("승리까지" + WinScore + "점 남았습니다.");
					Score = 3 - WinScore;
				} else if (Insert == 1) {
					System.out.println("비겼습니다.");
					System.out.println("승리까지" + WinScore + "점 남았습니다.");
					Score = 3 - WinScore;
				} else if (Insert == 2) {
					System.out.println("졌습니다.");
					System.out.println("승리까지" + WinScore + "점 남았습니다.");
					Score = 3 - WinScore;
				}else {
					Score--;
					System.out.println("가위 바위 보 이외의 값이 입력되어 해당 게임을 무효로 처리하겠습니다.");
					System.out.println();
				}
				System.out.println();
				break;
			case 2:
				System.out.println("상대가 보를 냈습니다.");
				if (Insert == 0) {
					System.out.println("졌습니다.");
					System.out.println("승리까지" + WinScore + "점 남았습니다.");
					Score = 3 - WinScore;
				} else if (Insert == 1) {
					System.out.println("현재 " + Score + "번을 이겼습니다.");
					WinScore--;
					System.out.println("승리까지" + WinScore + "점 남았습니다.");
					Score = 3 - WinScore;
				} else if (Insert == 2) {
					System.out.println("비겼습니다.");
					System.out.println("승리까지" + WinScore + "점 남았습니다.");
					Score = 3 - WinScore;
				}else {
					Score--;
					System.out.println("가위 바위 보 이외의 값이 입력되어 해당 게임을 무효로 처리하겠습니다.");
					System.out.println();
				}
				System.out.println();
				break;

			default:
				break;
			}
		}
		System.out.print("3번의 게임을 모두 승리하셨습니다." + User +"님 축하드립니다.");
	}
}
