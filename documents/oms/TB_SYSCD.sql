/*
================================================================================
��ṹ����:TB_SYSCD
��ṹ����:�û��Զ���˵���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SYSCD;
drop index AK_TB_SYSCD;
drop table TB_SYSCD;
create table TB_SYSCD  (
   SYSCD_ID             INTEGER                         not null,  /*�˵�ID           */
   SYSCD001             VARCHAR2(12)                    not null,  /*�˵�����         */
   SYSCD002             VARCHAR2(16)                    not null,  /*�˵�����         */
   SYSCD003             INTEGER,                                   /*��ʽID           */
   SYSCD004             VARCHAR2(100),                             /*�˵�ͼ��         */
   SYSCD005             INTEGER,                                   /*�ϼ��˵�ID       */
   SYSCD006             NUMBER(12,0),                              /*˳���           */
   SYSCD007             VARCHAR2(255),                             /*���в���         */
   SYSCD008             VARCHAR2(60),                             /*�˵�����         */
   ISLASTLEV            VARCHAR2(1),                               /*�Ƿ�ĩ��         */
   LEVNUM               NUMBER(1),                                 /*�㼶             */
   PARCODE              VARCHAR2(40),                              /*��������         */
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER(1),                                 /*����״̬         */
   constraint PK_TB_SYSCD primary key (SYSCD_ID)
);
create unique index AK_TB_SYSCD on TB_SYSCD (SYSCD_ID,SYSCD001);
create sequence SEQ_TB_SYSCD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSCD to public;
grant index  on TB_SYSCD to public;
grant update on TB_SYSCD to public; 
grant delete on TB_SYSCD to public;  
grant insert on TB_SYSCD to public; 
grant select on SEQ_TB_SYSCD to public;   