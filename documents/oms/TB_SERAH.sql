/*
================================================================================
��ṹ����:TB_SERAH
��ṹ����:����ƾ֤���ϵ��ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SERAH;
drop index AK_TB_SERAH;
drop table TB_SERAH;
create table TB_SERAH  (
   SERAH_ID             INTEGER                         not null,  /*����ƾ֤���ϵ���ϸID */
   SERAH001             INTEGER                         not null,  /*����ƾ֤���ϵ�ID     */
   SERAH002             INTEGER                         not null,  /*ƾ֤����ID           */
   SERAH003             NUMBER(12)                      not null,  /*��ʼ����             */
   SERAH004             NUMBER(12)                      not null,  /*��������             */
   SERAH005             NUMBER(12)                      not null,  /*����                 */
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_SERAH primary key (SERAH_ID)
);
create unique index AK_TB_SERAH on TB_SERAH (SERAH001,SERAH002,SERAH003);
create sequence SEQ_TB_SERAH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERAH to public;
grant index  on TB_SERAH to public;
grant update on TB_SERAH to public; 
grant delete on TB_SERAH to public;  
grant insert on TB_SERAH to public; 
grant select on SEQ_TB_SERAH to public;   