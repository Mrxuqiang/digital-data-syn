/*
================================================================================
��ṹ����:TB_SALDC
��ṹ����:��Ԥ�յ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SALDC;
drop index AK_TB_SALDC;
drop table TB_SALDC;
create table TB_SALDC  (
   SALDC_ID             INTEGER                         not null,  /*��Ԥ�յ�ID       */
   SALDC001             INTEGER                         not null,  /*����ID           */
   SALDC002             VARCHAR2(30)                    not null,  /*��Ԥ�յ���       */
   SALDC003             DATE                            not null,  /*�˿�����         */
   SALDC004             INTEGER                         not null,  /*Ԥ�յ�ID         */
   SALDC005             INTEGER                         not null,  /*�˿���֯ID       */
   SALDC006             INTEGER                         not null,  /*����ID           */
   SALDC007             VARCHAR2(255),                             /*��ע             */
   SALDC008             INTEGER,                                   /*¼����ID         */
   SALDC009             DATE,                                      /*¼������         */
   SALDC010             INTEGER,                                   /*�����ID         */
   SALDC011             DATE,                                      /*�������         */
   SALDC012             VARCHAR2(1)                     not null,  /*���״̬         */
   SALDC013             VARCHAR2(1),                               /*�Ƿ�ǩ��         */
   SALDC014             VARCHAR2(30),                              /*ǩ�˵���         */
   SALDC015             VARCHAR2(1),                               /*ǩ����           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER(1),                                 /*����״̬         */
   constraint PK_TB_SALDC primary key (SALDC_ID)
);
create unique index AK_TB_SALDC on TB_SALDC (SALDC002,SALDC005);
create sequence SEQ_TB_SALDC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALDC to public;
grant index  on TB_SALDC to public;
grant update on TB_SALDC to public; 
grant delete on TB_SALDC to public;  
grant insert on TB_SALDC to public; 
grant select on SEQ_TB_SALDC to public;   