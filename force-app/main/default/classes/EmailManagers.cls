public class EmailManagers {
    public void sendMail(String address, String subject, String body) {
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        String[] toAddresses = new String[] {address}; 
            mail.settoAddresses(toAddresses);
            mail.setSubject(subject);
        	mail.setPlainTextBody(body);
        Messaging.SendEmailResult[] results = Messaging.sendEmail(new Messaging.SingleEmailMessage[] {mail});
        
        inspectResults(results);
        	
    }
    
    private static Boolean inspectResults(Messaging.SendEmailResult[] results) {
        Boolean SendResult= true; 
        
        for(Messaging.SendEmailResult res: results) {
            if(res.isSuccess()){
                System.debug('Email Sent Successfully');
                }
            else {
                sendResult=false;
                System.debug('The following error occured' + res.getErrors());
            }
        }
        return sendResult;
    }
}