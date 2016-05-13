/*
================================================================================
��ṹ����:TB_PUBLB
��ṹ����:����ڼ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBLB;
drop index AK_TB_PUBLB;
drop table TB_PUBLB;
create table TB_PUBLB  (
   PUBLB_ID             INTEGER                         not null,  /*����ڼ�ID       */
   PUBLB001             NUMBER(4)                       not null,  /*������         */
   PUBLB002             INTEGER                         not null,  /*����ڼ䷽��ID   */
   PUBLB003             NUMBER(2),                                 /*�ڼ����         */
   PUBLB004             NUMBER(2),                                 /*���ȸ���         */
   PUBLB005             DATE                            not null,  /*��ʼ����         */
   PUBLB006             DATE                            not null,  /*��������         */
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER(1),                                 /*����״̬         */
   constraint PK_TB_PUBLB primary key (PUBLB_ID)
);
create unique index AK_TB_PUBLB on TB_PUBLB (PUBLB001);
create sequence SEQ_TB_PUBLB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBLB to public;
grant index  on TB_PUBLB to public;
grant update on TB_PUBLB to public; 
grant delete on TB_PUBLB to public;  
grant insert on TB_PUBLB to public; 
grant select on SEQ_TB_PUBLB to public;   