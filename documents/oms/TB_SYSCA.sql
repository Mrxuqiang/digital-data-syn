\/*
================================================================================
��ṹ����:TB_SYSCA
��ṹ����:�û���׼�˵���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SYSCA;
drop index AK_TB_SYSCA;
drop table TB_SYSCA;
create table TB_SYSCA  (
   SYSCA_ID             INTEGER                         not null,  /*�˵�ID           */
   SYSCA001             VARCHAR2(12)                    not null,  /*�˵�����         */
   SYSCA002             VARCHAR2(16)                    not null,  /*�˵�����         */
   SYSCA003             INTEGER,                                   /*��ʽID           */
   SYSCA004             VARCHAR2(100),                             /*�˵�ͼ��         */
   SYSCA005             INTEGER,                                   /*�ϼ��˵�ID       */
   SYSCA006             NUMBER(12,0),                              /*˳���           */
   SYSCA007             VARCHAR2(255),                             /*���в���         */
   SYSCA008             VARCHAR2(1),                               /*��ҵ����         */
   ISLASTLEV            VARCHAR2(1),                               /*�Ƿ�ĩ��         */
   LEVNUM               NUMBER(1),                                 /*�㼶             */
   PARCODE              VARCHAR2(40),                              /*��������         */
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER(1),                                 /*����״̬         */
   constraint PK_TB_SYSCA primary key (SYSCA_ID)
);
create unique index AK_TB_SYSCA on TB_SYSCA (SYSCA001,SYSCA002);
create sequence SEQ_TB_SYSCA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSCA to public;
grant index  on TB_SYSCA to public;
grant update on TB_SYSCA to public; 
grant delete on TB_SYSCA to public;  
grant insert on TB_SYSCA to public; 
grant select on SEQ_TB_SYSCA to public;   