/*
================================================================================
��ṹ����:TB_RECAD
��ṹ����:����ƾ֤���ձ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_RECAD;
drop index AK_TB_RECAD;
drop table TB_RECAD;
create table TB_RECAD  (
   RECAD_ID             INTEGER                         not null,  /*����ƾ֤���ձ�ID     */
   RECAD001             INTEGER                         not null,  /*��ԴID             */
   RECAD002             VARCHAR2(1)                     not null,  /*��Դ����               */
   RECAD003             INTEGER,                                   /*��˾                 */
   RECAD004             INTEGER ,                                  /*��������             */
   RECAD005             INTEGER ,                                  /*ƾ֤��               */
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_RECAD primary key (RECAD_ID)
);
create unique index AK_TB_RECAD on TB_RECAD (RECAD001,RECAD002,RECAD004);
create sequence SEQ_TB_RECAD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_RECAD to public;
grant index  on TB_RECAD to public;
grant update on TB_RECAD to public; 
grant delete on TB_RECAD to public;  
grant insert on TB_RECAD to public; 
grant select on SEQ_TB_RECAD to public;   