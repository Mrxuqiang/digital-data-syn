/*
================================================================================
��ṹ����:TB_EXPAC
��ṹ����:��������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_EXPAC;
drop index AK_TB_EXPAC;
drop table TB_EXPAC;
create table TB_EXPAC  (
   EXPAC_ID             INTEGER                         not null,  /*��������ID          */
   EXPAC001             INTEGER                         not null,  /*����              */
   EXPAC002             VARCHAR2(30)                    not null,  /*����              */
   EXPAC003             DATE                            not null,  /*��������          */
   EXPAC004             INTEGER                         not null,  /*����              */
   EXPAC005             INTEGER                         not null,  /*������Ա          */
   EXPAC006             VARCHAR2(1)                     not null,  /*���㷽ʽ          */
   EXPAC007             INTEGER                         not null,  /*�����˻�           */
   EXPAC008             INTEGER,                                   /*¼����             */
   EXPAC009             DATE,                                      /*¼������           */
   EXPAC010             VARCHAR2(1)                     not null,  /*����״̬           */
   EXPAC011             INTEGER,                                   /*�����             */
   EXPAC012             DATE ,                                     /*�������           */
   EXPAC013             VARCHAR2(1)                     not null,  /*����ƾ֤           */
   EXPAC014             NUMBER(16,2),                              /*�������               */
   EXPAC015             VARCHAR2(255),                             /*��ע                   */ 
   EXPAC016             INTEGER,                                   /*����               */  
   EXPAC017             NUMBER(16,4),                               /*����           */ 
   EXPAC018             NUMBER(16,2),                              /*������           */ 
   EXPAC019             NUMBER(16,2),                              /*���һ�����           */ 
   EXPAC020             NUMBER(16,2),                              /*���ұ������           */ 
   EXPAC021             NUMBER(4),                                 /*������           */   
   EXPAC022             NUMBER(2),                                 /*����ڼ�           */     
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_EXPAC primary key (EXPAC_ID)                                 
);                                                                               
create unique index AK_TB_EXPAC on TB_EXPAC (EXPAC001,EXPAC002);                          
create sequence SEQ_TB_EXPAC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_EXPAC to public;                                              
grant index  on TB_EXPAC to public;                                              
grant update on TB_EXPAC to public;                                              
grant delete on TB_EXPAC to public;                                              
grant insert on TB_EXPAC to public;                                              
grant select on SEQ_TB_EXPAC to public;                                          
                                                                                 
                                                                                 
                                                                                 
                                                                                 