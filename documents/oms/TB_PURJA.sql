/*
================================================================================
��ṹ����:TB_PURJA
��ṹ����:�ջ�֪ͨ������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PURJA;
drop index AK_TB_PURJA;
drop table TB_PURJA;
create table TB_PURJA  (
   PURJA_ID            INTEGER                not null,            /*�ջ���ID         */        
   PURJA001            NUMBER(1)              not null,            /*����             */ --mark 20100329       
   PURJA002            INTEGER                not null,            /*�ջ�����         */        
   PURJA003            VARCHAR2(30)           not null,            /*�ջ�����         */        
   PURJA004            DATE                   not null,            /*Ԥ�Ƶ�������     */        
   PURJA005            INTEGER,                                    /*����             */ --mark 20100329     
   PURJA006            INTEGER                not null,            /*�ջ�Ӫ����֯     */        
   PURJA007            INTEGER                not null,            /*�ջ�����         */        
   PURJA008            INTEGER                not null,            /*�ջ���Ա         */   
   PURJA009            INTEGER,                                    /*����             */ --mark 20100329
   PURJA010            INTEGER,                                    /*����             */ --mark 20100329       
   PURJA011            INTEGER                not null,            /*��Ӧ��           */        
   PURJA012            VARCHAR2(1)            not null,            /*�ջ�״̬         */ --mark 20100329       
   PURJA013            VARCHAR2(1)            not null,            /*����             */ --mark 20100329
   PURJA014            VARCHAR2(1)            not null,            /*�᰸��           */  --modify 20101021 by hansf	     
   PURJA015            VARCHAR2(30),                               /*���̵���         */ --modify 20100329     
   PURJA016            VARCHAR2(255),                              /*�ջ���ַ         */        
   PURJA017            VARCHAR2(255),                              /*��ע             */        
   PURJA018            VARCHAR2(1)             not null,           /*���״̬         */        
   PURJA019            INTEGER,                                    /*¼����           */        
   PURJA020            DATE,                                       /*¼������         */        
   PURJA021            INTEGER,                                    /*�����           */        
   PURJA022            DATE,                                       /*�������         */        
   PURJA023            INTEGER,                                    /*�ջ��ֿ�         */        
   PURJA024            INTEGER,                                    /*�ջ���λ         */   --mark 20100329    
   PURJA025            DATE,                                       /*��������         */   --mark 20100329
   PURJA026	       NUMBER(18,3),                               /*�����ϼ�         */   --add by 0811
   PURJA027            NUMBER(18,3),                               /*��˰���ϼ�     */   
   PURJA028            NUMBER(18,3),                               /*��������         */      
   PURJA029            NUMBER(18,3),                               /*����             */ 
   PURJA030            NUMBER(12,2),                               /*�����           */--20110725 modify by xiechun 
   PURJA031            NUMBER(1)                    not null,      /*��Դ����         */ --20110813 add by xiechun--1.�ֹ�¼��2.�����
   PURJA032            VARCHAR2(30),                               /*��Դ����         */ --20110813 add by xiechun
   CREATE_USER         VARCHAR2(12),                               /*������Ա         */
   USER_GROUP          VARCHAR2(12),                               /*������Ա����     */                               
   CREATE_DATE         DATE,                                       /*��������         */
   MODIFIER            VARCHAR2(12),                               /*�޸���Ա         */
   MODI_DATE           DATE,                                       /*�޸�����         */
   FLAG                NUMBER(1),                                  /*����״̬         */
   constraint PK_TB_PURJA primary key (PURJA_ID)
);
create unique index AK_TB_PURJA on TB_PURJA (PURJA_ID,PURJA002, PURJA003);
create sequence SEQ_TB_PURJA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURJA to public;
grant index  on TB_PURJA to public;
grant update on TB_PURJA to public; 
grant delete on TB_PURJA to public;  
grant insert on TB_PURJA to public; 
grant select on SEQ_TB_PURJA to public;   