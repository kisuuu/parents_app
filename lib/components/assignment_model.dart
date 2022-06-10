class Assignment {
  final String announcement;
  final String stage;

  Assignment({
    required this.announcement,
    required this.stage,
  });

  // factory Assignment.fromJson(Map<String, dynamic> json) =>
  //     Assignment(announcement: json['announcement'], stage: json['stage']);
}

List<Assignment> allAssignments = [
  Assignment(
    announcement: "Leave Application",
    stage: "Done: View Answer",
  ),
  Assignment(
    announcement: "Exam Date",
    stage: "Opps : Answer Pending",
  ),
  Assignment(
    announcement: "Report Card Pending",
    stage: "Done: View Answer",
  ),
  Assignment(
    announcement: "My Question 01",
    stage: "Opps : Answer Pending",
  ),
  Assignment(
    announcement: "My Question 02",
    stage: "Opps : Answer Pending",
  ),
  Assignment(
    announcement: "My Question 03",
    stage: "Done: View Answer",
  ),
  Assignment(
    announcement: "My Question 04",
    stage: "Done: View Answer",
  ),
  Assignment(
    announcement: "My Question 05",
    stage: "Done: View Answer",
  ),
];
