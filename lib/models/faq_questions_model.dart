class FAQItem {
  final String question;
  final String answer;

  FAQItem({required this.question, required this.answer});

  static List<FAQItem> faqList = [
    FAQItem(
        question: 'What is NAKHLAH?',
        answer:
            'Lorem ipsum dolor sit amet. Magna ut egestas id elementum id eu a turpis. Risus arcu id varius'),
    FAQItem(
        question: 'How do I start a lesson?',
        answer:
            'Lorem ipsum dolor sit amet. Magna ut egestas id elementum id eu a turpis.'),
    FAQItem(
        question: 'How do I upgrade account?',
        answer:
            'Lorem ipsum dolor sit amet. Magna ut egestas id elementum id eu a turpis.'),
    FAQItem(
        question: 'How do I close account?',
        answer:
            'Lorem ipsum dolor sit amet. Magna ut egestas id elementum id eu a turpis.'),
  ];
}
