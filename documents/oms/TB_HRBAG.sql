/*
================================================================================
��ṹ����:TB_HRBAG
��ṹ����:Ա�������˺ű�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_HRBAG;
drop index AK_TB_HRBAG;
drop table TB_HRBAG;
create table TB_HRBAG  (
   HRBAG_ID             INTEGER                         not null,  /*���õص�ID         */
   HRBAG001             INTEGER                         not null,  /*Ա��ID             */
   HRBAG002             INTEGER                         not null,  /*ת������ID         */
   HRBAG003             INTEGER,                                   /*��������           */
   HRBAG004             VARCHAR2(20)                    not null,  /*�����˺�           */
   HRBAG005             VARCHAR2(1)                     not null,  /*�˻�����           */
   HRBAG006             DATE,                                      /*ʧЧ����           */
   HRBAG007             VARCHAR2(255),                             /*��ע               */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_HRBAG primary key (HRBAG_ID)
);
create unique index AK_TB_HRAAG on TB_HRBAG (HRBAG001);
create sequence SEQ_TB_HRBAG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_HRBAG to public;
grant index  on TB_HRBAG to public;
grant update on TB_HRBAG to public; 
grant delete on TB_HRBAG to public;  
grant insert on TB_HRBAG to public; 
grant select on SEQ_TB_HRBAG to public;   