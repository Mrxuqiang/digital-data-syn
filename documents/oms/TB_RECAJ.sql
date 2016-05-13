/*                   
================================================================================
��ṹ����:TB_RECAJ  
��ṹ����:Ԥ���˿���ϸ��  
��ṹĿ��:  
================================================================================
*/    
    
drop sequence SEQ_TB_RECAJ;  
drop index AK_TB_RECAJ;  
drop table TB_RECAJ;  
create table TB_RECAJ  (  
   RECAJ_ID             INTEGER                         not null,  /*�˿���ϸ��ID      */
   RECAJ001             INTEGER                         not null,  /*�˿�����ID        */
   RECAJ002             INTEGER                         not null,  /*Ԥ�յ�����        */
   RECAJ003             INTEGER,                                   /*��Ŀ���          */
   RECAJ004             INTEGER ,                                  /*��������          */ 
   RECAJ005             INTEGER                         not null,  /*���ʽ              */
   RECAJ006             VARCHAR2(1)                     not null,  /*��֧�춯��        */
   RECAJ007             INTEGER ,                                  /*��Ŀ              */
   RECAJ008             INTEGER ,                                  /*ˢ������          */
   RECAJ009             INTEGER ,                                  /*��������          */                                                                           
   RECAJ010             NUMBER(16,2),                              /*������            */
   RECAJ011             INTEGER,                                   /*�����˺�          */
   RECAJ012             NUMBER(16,2),                              /*ԭ�ҽ��          */
   RECAJ013             NUMBER(16,2),                              /*ԭ�ҿ��˽��      */
   RECAJ014             NUMBER(16,2),                              /*ԭ���˿���      */
   RECAJ015             NUMBER(16,2),                              /*���ҽ��          */
   RECAJ016             NUMBER(16,2),                              /*���ҿ��˽��     */
   RECAJ017             NUMBER(16,2),                              /*�����˿���     */ 
   RECAJ018             INTEGER,                                   /*Ӫ����֯I     */      
   RECAJ019             NUMBER(16,2),                              /*ԭ���Ѻ������     */
   RECAJ020             NUMBER(16,2),                              /*�����Ѻ������     */         
   RECAJ021             VARCHAR2(1),                               /*��Դ     */ 
   RECAJ022             INTEGER,                                   /*��Դ����ID (�˿��ϸID)    */      
   RECAJ023             INTEGER,                                   /*���˵�ID    */
   RECAJ024             INTEGER,                                   /*�������ID     */  
   CREATE_USER          VARCHAR2(12),                              /*������Ա              */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����          */                               
   CREATE_DATE          DATE,                                      /*��������              */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա              */
   MODI_DATE            DATE,                                      /*�޸�����              */
   FLAG                 NUMBER(1),                                 /*����״̬              */
   constraint PK_TB_RECAJ primary key (RECAJ_ID)  
);    
create unique index AK_TB_RECAJ on TB_RECAJ (RECAJ_ID,RECAJ001,RECAJ002);  
create sequence SEQ_TB_RECAJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_RECAJ to public;  
grant index  on TB_RECAJ to public;  
grant update on TB_RECAJ to public;   
grant delete on TB_RECAJ to public;    
grant insert on TB_RECAJ to public;   
grant select on SEQ_TB_RECAJ to public;     