package stepdefinitions;

import helper.SetGlobalVariable;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

public class readFile {
    public XSSFSheet xssfSheet;
    File file;
    XSSFWorkbook xssfWorkbook;

    public readFile(String fileName, String sheetName) throws IOException {
        file = new File(SetGlobalVariable.appPath + "\\src\\test\\resources\\testData\\" + fileName);
        FileInputStream fileio = new FileInputStream(file);
        xssfWorkbook = new XSSFWorkbook(fileio);
        xssfSheet = xssfWorkbook.getSheet(sheetName);
    }

    public String readCell(int rowNo, int columnNo) {
        Row row = xssfSheet.getRow(rowNo);
        return row.getCell(columnNo).toString();
    }

    public int totalRow() {
        return xssfSheet.getLastRowNum();
    }

    public void writeCell(int rowNo, int columnNo, String value) throws IOException {
        Row row = xssfSheet.getRow(rowNo);
        //row.getCell(columnNo).setCellValue(value);
        row.createCell(columnNo).setCellValue(value);
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        xssfWorkbook.write(fileOutputStream);
        fileOutputStream.close();
    }
}
