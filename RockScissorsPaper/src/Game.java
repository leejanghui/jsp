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

		System.out.println("���� ���� �� ���� �Դϴ�.");
		System.out.print("������ �����ϴ� ������� �̸��� �����ΰ��� : "); //palyer�̸� �޾ƿ���.

		String User = scanner.next();

		System.out.println();

		System.out.println("������ �����ϰڽ��ϴ�." + User + "��");
		System.out.println("������ 0 ������ 1 ���� 2�Դϴ�.");

		for (int Score = 0; Score <= 3; Score++) {
			
			GamePlaying++;
			
			System.out.print("���� ���� �� �߿� ������ ���� �������ּ��� : ");
			
			int Insert = scanner.nextInt();

			int RandomRockScissorsPaper = random.nextInt(3);

			switch (RandomRockScissorsPaper) {
			case 0:
				System.out.println("��밡 ������ �½��ϴ�.");//Random�Լ��� �̿��Ͽ� COM�� ������ �´��� Ȯ�ν����ֱ� ���� ���.
				if (Insert == 0) {
					System.out.println("�����ϴ�.");//���� �� ���� �Ͽ����� ���.
					System.out.println("�¸�����" + WinScore + "�� ���ҽ��ϴ�.");//�¸����� ���� �� ���� ���Ҵ��� ���
					Score = 3 - WinScore; //�̰��� ��쿡�� Score�� ���� �� �ְ���.
					Drow++;
				} else if (Insert == 1) {
					System.out.println("�����ϴ�.");
					System.out.println("�¸�����" + WinScore + "�� ���ҽ��ϴ�.");
					Score = 3 - WinScore;
					Lose++;
				} else if (Insert == 2) {
					System.out.println("���� " + Score + "���� �̰���ϴ�.");
					WinScore--; //�̰��� ��쿡 Score�� ���� �� �ֵ��� WinScore�� -1 �Ͽ� Score�� �ϳ� �� �� �� �ֵ�����.
					System.out.println("�¸�����" + WinScore + "�� ���ҽ��ϴ�.");
					Score = 3 - WinScore;
					Win++;
				} else {
					Score--;
					System.out.println("���� ���� �� �̿��� ���� �ԷµǾ� �ش� ������ ��ȿ�� ó���ϰڽ��ϴ�.");
					System.out.println();
				}
				System.out.println();
				break;

			case 1:
				System.out.println("��밡 ������ �½��ϴ�.");
				if (Insert == 0) {
					System.out.println("���� " + Score + "���� �̰���ϴ�.");
					WinScore--;
					System.out.println("�¸�����" + WinScore + "�� ���ҽ��ϴ�.");
					Score = 3 - WinScore;
					Win++;
				} else if (Insert == 1) {
					System.out.println("�����ϴ�.");
					System.out.println("�¸�����" + WinScore + "�� ���ҽ��ϴ�.");
					Score = 3 - WinScore;
					Drow++;
				} else if (Insert == 2) {
					System.out.println("�����ϴ�.");
					System.out.println("�¸�����" + WinScore + "�� ���ҽ��ϴ�.");
					Score = 3 - WinScore;
					Lose++;
				} else {//���� ���� �� �� 0~2 �� ���� ���� �Է� �޾��� ��� ������ ��ȿȭ
					Score--;//���� ���� �� �̿��� ���� �޾��� ��� ������ ��ȿȭ �ϱ� ���� Score�� ī��Ʈ�� �ø��� ����.
					System.out.println("���� ���� �� �̿��� ���� �ԷµǾ� �ش� ������ ��ȿ�� ó���ϰڽ��ϴ�.");
					System.out.println();
				}
				System.out.println();
				break;

			case 2:
				System.out.println("��밡 ���� �½��ϴ�.");
				if (Insert == 0) {
					System.out.println("�����ϴ�.");
					System.out.println("�¸�����" + WinScore + "�� ���ҽ��ϴ�.");
					Score = 3 - WinScore;
					Lose++;
				} else if (Insert == 1) {
					System.out.println("���� " + Score + "���� �̰���ϴ�.");
					WinScore--;
					System.out.println("�¸�����" + WinScore + "�� ���ҽ��ϴ�.");
					Score = 3 - WinScore;
					Win++;
				} else if (Insert == 2) {
					System.out.println("�����ϴ�.");
					System.out.println("�¸�����" + WinScore + "�� ���ҽ��ϴ�.");
					Score = 3 - WinScore;
					Drow++;
				} else {
					Score--;
					System.out.println("���� ���� �� �̿��� ���� �ԷµǾ� �ش� ������ ��ȿ�� ó���ϰڽ��ϴ�.");
					System.out.println();
				}
				System.out.println();
				break;

			default:
				break;
			}
		}
		scanner.close();
		
		int MissingGame = GamePlaying - (Lose + Win + Drow);//��ȿȭ �� ���Ӽ� ���
		GamePlaying = GamePlaying - MissingGame;
		double WinningRate = (double)Win / GamePlaying * 100;//�·� ���
		
		System.out.println(GamePlaying + "�� �� 3���� ������ ��� �¸��ϼ̽��ϴ�." + User + "�� ���ϵ帳�ϴ�.");
		System.out.println(User + "���� ������ " + GamePlaying + "��" + Win + "��" + Lose + "��" + Drow + "�� �Դϴ�.");//��ȿȭ ���� ���� ������ ���� ���
		System.out.println(User + "���� �·���" + WinningRate + "% �Դϴ�.");//�·� ���
		System.out.println("�� ��ȿȭ �� ���� Ƚ����" + MissingGame + "�Դϴ�.");//��ȿȭ �� ������ ��
		System.out.print("������ �����մϴ�.");
	}
}
