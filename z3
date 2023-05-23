import java.io.*;

public class test3 {
    public static void main(String[] args) throws IOException {
        File file = new File("C:\\Users\\tosch\\OneDrive\\Рабочий стол\\text3.txt");
        FileWriter fwr = new FileWriter(file, true);
        BufferedReader fread = new BufferedReader(new FileReader(file));
        fwr.write("\n\nВЫВОД\n\n");
        while (fread.ready()){
            String s = fread.readLine();
            String[] mas = s.split(" ");
            for (int i = 0; i < mas.length; i ++){
                if (mas[i].length() == 5){
                    fwr.write(mas[i] + "\n");
                }
            }
        }
        fwr.flush();
        fwr.close();
    }
}
