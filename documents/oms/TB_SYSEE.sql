/*
================================================================================
��ṹ����:TB_SYSEE
��ṹ����:������Ŀ��Ϣ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SYSEE;
drop index AK_TB_SYSEE;
drop table TB_SYSEE;
create table TB_SYSEE  (
   SYSEE_ID             INTEGER                         not null,  /*������Ŀ��ϢID   */
   SYSEE001             INTEGER                         not null,  /*������ĿID       */
   SYSEE002             VARCHAR2(1)                     not null,  /*��Ϣ����         */
   SYSEE003             VARCHAR2(60)                    not null,  /*��Ϣ����         */
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER(1),                                 /*����״̬         */
   constraint PK_TB_SYSEE primary key (SYSEE_ID)
);
create unique index AK_TB_SYSEE on TB_SYSEE (SYSEE001,SYSEE002,SYSEE003);
create sequence SEQ_TB_SYSEE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSEE to public;
grant index  on TB_SYSEE to public;
grant update on TB_SYSEE to public; 
grant delete on TB_SYSEE to public;  
grant insert on TB_SYSEE to public; 
grant select on SEQ_TB_SYSEE to public;   