/*
================================================================================
��ṹ����:TB_PUBLC
��ṹ����:����ڼ��·ݱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBLC;
drop index AK_TB_PUBLC;
drop table TB_PUBLC;
create table TB_PUBLC  (
   PUBLC_ID             INTEGER                         not null,  /*����ڼ��·�ID   */
   PUBLC001             INTEGER                         not null,  /*����ڼ�ID       */
   PUBLC002             NUMBER(2)                       not null,  /*����·�         */
   PUBLC003             DATE                            not null,  /*��ʼ����         */
   PUBLC004             DATE                            not null,  /*��������         */
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER(1),                                 /*����״̬         */
   constraint PK_TB_PUBLC primary key (PUBLC_ID)
);
create unique index AK_TB_PUBLC on TB_PUBLC (PUBLC001,PUBLC002);
create sequence SEQ_TB_PUBLC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBLC to public;
grant index  on TB_PUBLC to public;
grant update on TB_PUBLC to public; 
grant delete on TB_PUBLC to public;  
grant insert on TB_PUBLC to public; 
grant select on SEQ_TB_PUBLC to public;   