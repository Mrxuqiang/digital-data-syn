/*
================================================================================
��ṹ����:TB_PAYAC
��ṹ����:Ӧ������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PAYAC;
drop index AK_TB_PAYAC;
drop table TB_PAYAC;
create table TB_PAYAC  (
   PAYAC_ID             INTEGER                         not null,  /*Ӧ������ID        */
   PAYAC001             INTEGER                         not null,  /*����ID              */
   PAYAC002             VARCHAR2(30)                    not null,  /*Ӧ������          */
   PAYAC003             INTEGER                         not null,  /*��Ӧ��ID            */
   PAYAC004             INTEGER                         not null,  /*���Ӧ��ID        */
   PAYAC005             INTEGER                         not null,  /*����ID              */ 
   PAYAC006             NUMBER(16,4),                               /*����              */ 
   PAYAC007             DATE,                                      /*��������          */ 
   PAYAC008             VARCHAR2(1)                     not null,  /*��Ӫ��ʽ          */
   PAYAC009             INTEGER,                                   /*����ID          */ 
   PAYAC010             INTEGER,                                   /*�����ԱID          */ 
   PAYAC011             DATE,                                      /*Ӧ����            */ 
   PAYAC012             VARCHAR2(1)                     not null,  /*����״̬          */ 
   PAYAC013             INTEGER,                                   /*¼����ID            */ 
   PAYAC014             DATE,                                      /*¼������          */ 
   PAYAC015             INTEGER,                                   /*�����ID            */ 
   PAYAC016             DATE,                                      /*�������          */
   PAYAC017             VARCHAR2(1)                     not null,  /*����״̬            */ 
   PAYAC018             VARCHAR2(1)                     not null,  /*����ƾ֤          */  
   PAYAC019             NUMBER(16,2),                              /*ԭ�ҽ��ϼ�          */ 
   PAYAC020             NUMBER(16,2),                              /*���ҽ��ϼ�          */ 
   PAYAC021             NUMBER(16,2),                              /*ԭ��ֱ�Ӹ�����          */ 
   PAYAC022             NUMBER(16,2),                              /*����ֱ�Ӹ�����          */  
   PAYAC023             INTEGER,                                   /*���㷽ʽID            */ 
   PAYAC024             VARCHAR2(1)                      not null, /*�ָ�                   */ 
   PAYAC025             NUMBER(16,2),                              /*ԭ�Һ������          */ 
   PAYAC026             NUMBER(16,2),                              /*���Һ������          */  
   PAYAC027             INTEGER,                                   /*Ӫ����֯ID          */  
   PAYAC028             VARCHAR2(255),                             /*��ע         */      
   PAYAC029             VARCHAR2(60),                             /*��Ʊ��         */    
   PAYAC030             NUMBER(4),                             /*������         */      
   PAYAC031             NUMBER(2),                             /*����ڼ�         */          
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PAYAC primary key (PAYAC_ID)
);
create unique index AK_TB_PAYAC on TB_PAYAC (PAYAC001,PAYAC002);
create sequence SEQ_TB_PAYAC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PAYAC to public;
grant index  on TB_PAYAC to public;
grant update on TB_PAYAC to public; 
grant delete on TB_PAYAC to public;  
grant insert on TB_PAYAC to public; 
grant select on SEQ_TB_PAYAC to public;   