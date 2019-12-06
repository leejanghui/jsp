import java.util.Random;
import java.util.Scanner;

public class Game {

	public static void main(String[] args) {
		int Rock = 0;
		int Scissors = 1;
		int Paper = 2;
		int WinScore = 3;
		int GamePlaying = 0;
		int Win = 0;
		int Lose = 0;
		int Drow = 0;
		
		Scanner scanner = new Scanner(System.in);

		Random random = new Random();

		System.out.println("가위 바위 보 게임 입니다.");
		System.out.print("게임을 진행하는 사용자의 이름은 무엇인가요 : "); //palyer이름 받아오기.

		String User = scanner.next();

		System.out.println();

		System.out.println("게임을 시작하겠습니다." + User + "님");
		System.out.println("바위는 0 가위는 1 보는 2입니다.");

		for (int Score = 0; Score <= 3; Score++) {
			
			GamePlaying++;
			
			System.out.print("가위 바위 보 중에 무엇을 낼지 결정해주세요 : ");
			
			int Insert = scanner.nextInt();

			int RandomRockScissorsPaper = random.nextInt(3);

			switch (RandomRockScissorsPaper) {
			case 0:
				System.out.println("상대가 바위를 냈습니다.");//Random함수를 이용하여 COM이 무엇을 냈는지 확인시켜주기 위해 출력.
				if (Insert == 0) {
					System.out.println("비겼습니다.");//현재 몇 승을 하였는지 출력.
					System.out.println("승리까지" + WinScore + "점 남았습니다.");//승리까지 현재 몇 점이 남았는지 출력
					Score = 3 - WinScore; //이겼을 경우에만 Score가 오를 수 있게함.
					Drow++;
				} else if (Insert == 1) {
					System.out.println("졌습니다.");
					System.out.println("승리까지" + WinScore + "점 남았습니다.");
					Score = 3 - WinScore;
					Lose++;
				} else if (Insert == 2) {
					System.out.println("현재 " + Score + "번을 이겼습니다.");
					WinScore--; //이겼을 경우에 Score가 오를 수 있도록 WinScore를 -1 하여 Score를 하나 덜 뺄 수 있도록함.
					System.out.println("승리까지" + WinScore + "점 남았습니다.");
					Score = 3 - WinScore;
					Win++;
				} else {
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
					Win++;
				} else if (Insert == 1) {
					System.out.println("비겼습니다.");
					System.out.println("승리까지" + WinScore + "점 남았습니다.");
					Score = 3 - WinScore;
					Drow++;
				} else if (Insert == 2) {
					System.out.println("졌습니다.");
					System.out.println("승리까지" + WinScore + "점 남았습니다.");
					Score = 3 - WinScore;
					Lose++;
				} else {//가위 바위 보 인 0~2 이 외의 값을 입력 받았을 경우 게임을 무효화
					Score--;//가위 바위 보 이외의 값을 받았을 경우 게임을 무효화 하기 위해 Score의 카운트를 올리지 않음.
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
					Lose++;
				} else if (Insert == 1) {
					System.out.println("현재 " + Score + "번을 이겼습니다.");
					WinScore--;
					System.out.println("승리까지" + WinScore + "점 남았습니다.");
					Score = 3 - WinScore;
					Win++;
				} else if (Insert == 2) {
					System.out.println("비겼습니다.");
					System.out.println("승리까지" + WinScore + "점 남았습니다.");
					Score = 3 - WinScore;
					Drow++;
				} else {
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
		scanner.close();
		
		int MissingGame = GamePlaying - (Lose + Win + Drow);//무효화 된 게임수 계산
		GamePlaying = GamePlaying - MissingGame;
		double WinningRate = (double)Win / GamePlaying * 100;//승률 계산
		
		System.out.println(GamePlaying + "판 중 3번의 게임을 모두 승리하셨습니다." + User + "님 축하드립니다.");
		System.out.println(User + "님의 전적은 " + GamePlaying + "전" + Win + "승" + Lose + "패" + Drow + "무 입니다.");//무효화 되지 않은 게임의 전적 출력
		System.out.println(User + "님의 승률은" + WinningRate + "% 입니다.");//승률 출력
		System.out.println("총 무효화 된 게임 횟수는" + MissingGame + "입니다.");//무효화 된 게임의 수
		System.out.print("게임을 종료합니다.");
	}
}
