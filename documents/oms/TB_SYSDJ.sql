/*
================================================================================
��ṹ����:TB_SYSDJ
��ṹ����:������ɫ��
��ṹĿ��:ȫ�ֱ�
================================================================================
*/

drop sequence SEQ_TB_SYSDJ;
drop index AK_TB_SYSDJ;
drop table TB_SYSDJ;
create table TB_SYSDJ  (
   SYSDJ_ID             INTEGER                         not null,  /*������ɫID           */
   SYSDJ001             VARCHAR2(10)                    not null,  /*������ɫ����         */
   SYSDJ002             VARCHAR2(40)                    not null,  /*������ɫ����         */
   SYSDJ003             INTEGER,                                   /*�ϼ�������ɫID       */
   SYSDJ004             VARCHAR2(256),                             /*��ע                 */
   SYSDJ005             VARCHAR2(1),                               /*������ɫ����         */
   SYSDJ006             INTEGER,                                   /*��ҵ���ID           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����          */                               
   CREATE_DATE          DATE,                                      /*��������              */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա              */
   MODI_DATE            DATE,                                      /*�޸�����              */
   FLAG                 NUMBER,                                    /*����״̬              */
   constraint PK_TB_SYSDJ primary key (SYSDJ_ID)
);
create unique index AK_TB_SYSDJ on TB_SYSDJ (SYSDJ001);
create sequence SEQ_TB_SYSDJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSDJ to public;
grant index  on TB_SYSDJ to public;
grant update on TB_SYSDJ to public; 
grant delete on TB_SYSDJ to public;  
grant insert on TB_SYSDJ to public; 
grant select on SEQ_TB_SYSDJ to public;   