/*
================================================================================
��ṹ����:TB_PUBRT
��ṹ����:��ĩ��ת�ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBRT;
drop index AK_TB_PUBRT;
drop table TB_PUBRT;
create table TB_PUBRT  (
   PUBRT_ID             INTEGER                         not null,  /*��ĩ��ת��ID       */
   PUBRT001             INTEGER                         not null,  /*��ĩ��ת��ID       */
   PUBRT002             VARCHAR2(10)                    not null,  /*���               */
   PUBRT003              VARCHAR2(255)                  not null,  /*ժҪID             */
   PUBRT004             INTEGER                         not null,  /*��ĿID             */
   PUBRT005             VARCHAR2(20) ,                             /*�������ʶ         */
   PUBRT006             VARCHAR2(1)                     not null,  /*����               */
   PUBRT007             INTEGER                         not null,  /*����ID             */
   PUBRT008             VARCHAR2(200)                   not null,  /*��ʽ           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PUBRT primary key (PUBRT_ID)
);
create unique index AK_TB_PUBRT on TB_PUBRT (PUBRT001,PUBRT002);
create sequence SEQ_TB_PUBRT minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBRT to public;
grant index  on TB_PUBRT to public;
grant update on TB_PUBRT to public; 
grant delete on TB_PUBRT to public;  
grant insert on TB_PUBRT to public; 
grant select on SEQ_TB_PUBRT to public;   