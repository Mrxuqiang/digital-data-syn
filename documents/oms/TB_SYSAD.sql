/*
================================================================================
��ṹ����:TB_SYSAD
��ṹ����:����������Ա�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SYSAD;
drop index AK_TB_SYSAD;
drop table TB_SYSAD;
create table TB_SYSAD  (
   SYSAD_ID             INTEGER                         not null,  /*���������ID     */
   SYSAD001             INTEGER                         not null,  /*����ID           */
   SYSAD002             INTEGER                         not null,  /*����ID           */
   SYSAD003             VARCHAR2(60)                    not null,  /*��������         */
   SYSAD004             DATE                            not null,  /*�춯����         */
   SYSAD005             VARCHAR2(255),                             /*��ʾ˵��         */
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER(1),                                 /*����״̬         */
   constraint PK_TB_SYSAD primary key (SYSAD_ID)
);
create unique index AK_TB_SYSAD on TB_SYSAD (SYSAD001,SYSAD002);
create sequence SEQ_TB_SYSAD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSAD to public;
grant index  on TB_SYSAD to public;
grant update on TB_SYSAD to public; 
grant delete on TB_SYSAD to public;  
grant insert on TB_SYSAD to public; 
grant select on SEQ_TB_SYSAD to public;   