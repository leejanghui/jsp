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
		
		System.out.println("���� ���� �� ���� �Դϴ�.");
		System.out.print("������ �����ϴ� ������� �̸��� �����ΰ��� : ");
		
		String User = scanner.next();
		
		System.out.println("������ �����ϰڽ��ϴ�." + User + "��");
		System.out.println("������ 0 ������ 1 ���� 2�Դϴ�.");

		for (int Score = 0; Score <= 3; Score++) {
			System.out.print("���� ���� �� �߿� ������ ���� �������ּ��� : ");
			int Insert = scanner.nextInt();

			int RandomRockScissorsPaper = random.nextInt(3);

			switch (RandomRockScissorsPaper) {
			case 0:
				System.out.println("��밡 ������ �½��ϴ�.");
				if (Insert == 0) {
					System.out.println("�����ϴ�.");
					System.out.println("�¸�����" + WinScore + "�� ���ҽ��ϴ�.");
					Score = 3 - WinScore;
				} else if (Insert == 1) {
					System.out.println("�����ϴ�.");
					System.out.println("�¸�����" + WinScore + "�� ���ҽ��ϴ�.");
					Score = 3 - WinScore;
				} else if (Insert == 2) {
					System.out.println("���� " + Score + "���� �̰���ϴ�.");
					WinScore--;
					System.out.println("�¸�����" + WinScore + "�� ���ҽ��ϴ�.");
					Score = 3 - WinScore;
				}else {
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
				} else if (Insert == 1) {
					System.out.println("�����ϴ�.");
					System.out.println("�¸�����" + WinScore + "�� ���ҽ��ϴ�.");
					Score = 3 - WinScore;
				} else if (Insert == 2) {
					System.out.println("�����ϴ�.");
					System.out.println("�¸�����" + WinScore + "�� ���ҽ��ϴ�.");
					Score = 3 - WinScore;
				}else {
					Score--;
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
				} else if (Insert == 1) {
					System.out.println("���� " + Score + "���� �̰���ϴ�.");
					WinScore--;
					System.out.println("�¸�����" + WinScore + "�� ���ҽ��ϴ�.");
					Score = 3 - WinScore;
				} else if (Insert == 2) {
					System.out.println("�����ϴ�.");
					System.out.println("�¸�����" + WinScore + "�� ���ҽ��ϴ�.");
					Score = 3 - WinScore;
				}else {
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
		System.out.print("3���� ������ ��� �¸��ϼ̽��ϴ�." + User +"�� ���ϵ帳�ϴ�.");
	}
}
