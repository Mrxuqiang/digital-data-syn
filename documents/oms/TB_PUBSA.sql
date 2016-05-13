/*
================================================================================
��ṹ����:TB_PUBSA
��ṹ����:Ӱ�������б�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBSA;
drop index AK_TB_PUBSA;
drop table TB_PUBSA;
create table TB_PUBSA  (
   PUBSA_ID             INTEGER                         not null,  /*Ӱ�������б�ID     */
   PUBSA001             VARCHAR2(4)                     not null,  /*���ر��       */
   PUBSA002             VARCHAR2(30)                    not null,  /*��������       */
   PUBSA003             INTEGER                         not null,  /*ģ��ID             */
   PUBSA004             INTEGER,                                   /*��ṹID            */
   PUBSA005             INTEGER,                                   /*�����ֶ�ID          */
   PUBSA006             INTEGER,                                   /*�Ӵ�ID              */
   PUBSA007             INTEGER,                                   /*��ʾ�ֶ�ID          */
   PUBSA008             INTEGER,                                   /*�����ֶ�ID           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_PUBSA primary key (PUBSA_ID)
);
create unique index AK_TB_PUBSA on TB_PUBSA (PUBSA001);
create sequence SEQ_TB_PUBSA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBSA to public;
grant index  on TB_PUBSA to public;
grant update on TB_PUBSA to public; 
grant delete on TB_PUBSA to public;  
grant insert on TB_PUBSA to public; 
grant select on SEQ_TB_PUBSA to public;   