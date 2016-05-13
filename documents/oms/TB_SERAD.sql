/*
================================================================================
��ṹ����:TB_SERAD
��ṹ����:����ƾ֤���ŵ��ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SERAD;
drop index AK_TB_SERAD;
drop table TB_SERAD;
create table TB_SERAD  (
   SERAD_ID             INTEGER                         not null,  /*����ƾ֤���ŵ���ϸID */
   SERAD001             INTEGER                         not null,  /*����ƾ֤���ŵ�ID     */
   SERAD002             INTEGER                         not null,  /*ƾ֤����ID           */
   SERAD003             NUMBER(12)                      not null,  /*��ʼ����             */
   SERAD004             NUMBER(12)                      not null,  /*��������             */
   SERAD005             NUMBER(12)                      not null,  /*����                 */
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_SERAD primary key (SERAD_ID)
);
create unique index AK_TB_SERAD on TB_SERAD (SERAD001,SERAD002,SERAD003);
create sequence SEQ_TB_SERAD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERAD to public;
grant index  on TB_SERAD to public;
grant update on TB_SERAD to public; 
grant delete on TB_SERAD to public;  
grant insert on TB_SERAD to public; 
grant select on SEQ_TB_SERAD to public;   