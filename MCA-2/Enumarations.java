public class Enumarations {
    public enum DayOfWeek
    {
        MONDAY(1),TUSEDAY(2),WEDNESDAY(3),THURSDAY(4),FRIDAY(5),SATURDAY(6),SUNDAY(7);
        public int val;
        DayOfWeek(int val)
        {
            this.val=val;
        }
        boolean isWorkDay()
        {
            if(val<6)
            return true;
            else
            return false;
        }
    }
    public static void main(String[] args)
    {
        DayOfWeek Day;
        System.out.println("Verification of Sunday(isWeekDay())");
        System.out.println(DayOfWeek.SUNDAY.isWorkDay());
        System.out.println("verification of Wednesday(isWeekDay())");
        System.out.println(DayOfWeek.WEDNESDAY.isWorkDay());

    }
}
