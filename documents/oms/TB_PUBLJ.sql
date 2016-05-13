/*
================================================================================
��ṹ����:TB_PUBLJ
��ṹ����:������������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBLJ;
drop index AK_TB_PUBLJ;
drop table TB_PUBLJ;
create table TB_PUBLJ  (
   PUBLJ_ID             INTEGER                         not null,  /*����������ID         */
   PUBLJ001             VARCHAR2(4)                     not null,  /*�������������       */
   PUBLJ002             VARCHAR2(30)                    not null,  /*��������������       */
   PUBLJ003             VARCHAR2(2)                     not null,  /*������Դ             */
   PUBLJ004             INTEGER,                                   /*��ͼ��             */
   PUBLJ005             INTEGER,                                   /*�����ֶ�ID             */
   PUBLJ006             INTEGER,                                   /*��ͼID               */
   PUBLJ007             INTEGER,                                   /*��ʾ�ֶ�ID               */
   PUBLJ008             INTEGER,                                   /*�����ֶ�ID               */
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_PUBLJ primary key (PUBLJ_ID)
);
create unique index AK_TB_PUBLJ on TB_PUBLJ (PUBLJ001);
create sequence SEQ_TB_PUBLJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBLJ to public;
grant index  on TB_PUBLJ to public;
grant update on TB_PUBLJ to public; 
grant delete on TB_PUBLJ to public;  
grant insert on TB_PUBLJ to public; 
grant select on SEQ_TB_PUBLJ to public;   