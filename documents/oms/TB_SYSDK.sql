/*
================================================================================
��ṹ����:TB_SYSDK
��ṹ����:������ɫ�ӱ�
��ṹĿ��:ȫ�ֱ�
================================================================================
*/

drop sequence SEQ_TB_SYSDK;
drop index AK_TB_SYSDK;
drop table TB_SYSDK;
create table TB_SYSDK  (
   SYSDK_ID             INTEGER                         not null,  /*������ɫ��ID           */
   SYSDK001             INTEGER                         not null,  /*������ɫ��id         */
   SYSDK002             INTEGER                         not null,  /*Ա��id               */
   SYSDK003             VARCHAR2(256),                             /*��ע                 */
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����          */                               
   CREATE_DATE          DATE,                                      /*��������              */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա              */
   MODI_DATE            DATE,                                      /*�޸�����              */
   FLAG                 NUMBER,                                    /*����״̬              */
   constraint PK_TB_SYSDK primary key (SYSDK_ID)
);
create unique index AK_TB_SYSDK on TB_SYSDK (SYSDK001,SYSDK002,FLAG);
create sequence SEQ_TB_SYSDK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSDK to public;
grant index  on TB_SYSDK to public;
grant update on TB_SYSDK to public; 
grant delete on TB_SYSDK to public;  
grant insert on TB_SYSDK to public; 
grant select on SEQ_TB_SYSDK to public;   