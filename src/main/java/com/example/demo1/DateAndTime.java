package com.example.demo1;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Locale;


public class DateAndTime {
    private LocalDateTime dateTime;
    private String dateFormatted;

    public DateAndTime() {
        dateTime = LocalDateTime.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("EEEE, 'le' dd MMMM yyyy 'à' HH'h'mm", Locale.FRENCH);
        dateFormatted = dateTime.format(formatter);
    }

    public DateAndTime(LocalDateTime dateTime, String dateFormatted) {
        this.dateTime = dateTime;
        this.dateFormatted = dateFormatted;
    }

    public LocalDateTime getDateTime() {
        return dateTime;
    }

    public String getDateFormatted() {
        return dateFormatted;
    }
}

