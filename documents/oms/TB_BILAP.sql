/*
================================================================================
��ṹ����:TB_BILAP
��ṹ����:���ַ��ź�ʹ����ϸ��
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_BILAP;
drop index AK_TB_BILAP;
drop table TB_BILAP;
create table TB_BILAP  (
   BILAP_ID             INTEGER                         not null,  /*���ַ��ź�ʹ����ϸid    */
   BILAP001             INTEGER                         not null,  /*�������id           */   
   BILAP002             INTEGER                         not null,  /*�̳�               */
   BILAP003             VARCHAR2(20)                    not null,  /*��˾����           */  
   BILAP004             VARCHAR2(30)                    not null,  /*����               */     
   BILAP005             INTEGER                         not null,  /*��������           */  
   BILAP006             DATE                            not null,  /*����               */  
   BILAP007             INTEGER,                                   /*���ֽ��           */  
   BILAP008             INTEGER,                                   /*�̻�               */  
   BILAP009             VARCHAR2(30),                              /*�̻���ͬ��         */         
   BILAP010             VARCHAR2(30),                              /*���ŵ���           */ 
   BILAP011             INTEGER,                                   /*��������id         */ 
   BILAP012             INTEGER,                                   /*�               */
   BILAP013             VARCHAR2(2),                               /*�̻��Ƿ�е�       */
   BILAP014             NUMBER(22,2),                              /*���ųе�����       */
   BILAP015             NUMBER(22,2),                              /*�̳��е�����       */
   BILAP016             NUMBER(22,2),                              /*�̻��е�����       */
   BILAP017             NUMBER(22,2),                              /*�Żݽ��           */
   BILAP018             VARCHAR2(255),                             /*��ע               */
   BILAP019             VARCHAR2(255),                             /*�ο�����һ         */
   BILAP020             VARCHAR2(255),                             /*�ο����Ŷ�         */
   BILAP021             VARCHAR2(255),                             /*�ο�������         */
   BILAP022             VARCHAR2(255),                             /*�ο�������         */  
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER,                                    /*����״̬            */
   constraint PK_TB_BILAP primary key (BILAP_ID)
);
create unique index AK_TB_BILAP on TB_BILAP (BILAP001,BILAP002,BILAP003,BILAP004,BILAP009,flag);
create sequence SEQ_TB_BILAP minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILAP to public;
grant index  on TB_BILAP to public;
grant update on TB_BILAP to public; 
grant delete on TB_BILAP to public;  
grant insert on TB_BILAP to public; 
grant select on SEQ_TB_BILAP to public;   