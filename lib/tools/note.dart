class Note {
  int id, priority;
  String title, description, date, reminder;

  Note(
      {this.priority = 1,
      this.title = '',
      this.description = '',
      this.date = '',
      this.reminder = ''});

  Note.fromRow(Map<String, dynamic> row) {
    id = row['id'];
    priority = row['priority'];
    title = row['title'];
    description = row['description'];
    date = row['date'];
    reminder = row['reminder'];
  }

  Map<String, dynamic> toRow() {
    return {
      'id': id,
      'priority': priority,
      'title': title,
      'description': description,
      'date': date,
      'reminder': reminder
    };
  }
}