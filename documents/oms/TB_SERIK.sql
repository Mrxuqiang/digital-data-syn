/*
================================================================================
��ṹ����:TB_SERIK
��ṹ����:ͬ�Ǳȼۼƻ��ӱ�
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_SERIK;
drop index AK_TB_SERIK;
drop table TB_SERIK;
create table TB_SERIK  (
   SERIK_ID             INTEGER                         not null,  /*�ȼۼƻ���ID       */
   SERIK001             INTEGER                         not null,  /*�ȼۼƻ���ID       */
   SERIK002             INTEGER,                                   /*�̻�����           */
   SERIK003             INTEGER,                                   /*չλ��             */
   SERIK004             INTEGER,                                   /*��ͬ��             */   
   SERIK005             INTEGER,                                   /*Ʒ��               */
   SERIK006             VARCHAR2(80),                              /*��Ʒ����           */
   SERIK007             VARCHAR2(60),                              /*�ͺ�               */
   SERIK008             VARCHAR2(60),                              /*���               */
   SERIK009             NUMBER(22,2),                              /*�۸�               */
   SERIK010             INTEGER,                                   /*���ж���           */
   SERIK011             VARCHAR2(255),                             /*��ע               */
   SERIK012             INTEGER,                                   /*�ȼ���             */ 
   SERIK013             DATE,                                      /*�ȼ�����           */  
   SERIK014             NUMBER(22,2),                              /*���ж���۸�       */ 
   SERIK015             VARCHAR2(255),                             /*�ȼ�˵��           */              
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER,                                    /*����״̬           */
   constraint PK_TB_SERIK primary key (SERIK_ID)
);
create sequence SEQ_TB_SERIK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERIK to public;
grant index  on TB_SERIK to public;
grant update on TB_SERIK to public; 
grant delete on TB_SERIK to public;  
grant insert on TB_SERIK to public; 
grant select on SEQ_TB_SERIK to public;   