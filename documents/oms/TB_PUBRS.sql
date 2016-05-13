/*
================================================================================
��ṹ����:TB_PUBRS
��ṹ����:��ĩ��ת����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBRS;
drop index AK_TB_PUBRS;
drop table TB_PUBRS;
create table TB_PUBRS  (
   PUBRS_ID             INTEGER                         not null,  /*��ĩ��ת��ID         */
   PUBRS001             VARCHAR2(4)                     not null,  /*����                 */
   PUBRS002             VARCHAR2(30)                     not null,  /*ת��˵��             */
   PUBRS003             INTEGER                         not null,  /*ƾ֤���ID             */
   PUBRS004             VARCHAR2(1)                     not null,  /*ת��ʱ��             */
   PUBRS005             INTEGER ,                                 /*ת��Ƶ��             */
   PUBRS006             INTEGER,                                  /*������ID              */
   PUBRS007             INTEGER                         not null,  /*��ת����ID             */
   PUBRS008             NUMBER(2),                                 /*ִ���ܴ���           */
   PUBRS009             VARCHAR2(6),                               /*�ϴ�ִ��ʱ��         */
   PUBRS010             NUMBER(2),                                 /*��ִ�д���           */ 
   PUBRS011             INTEGER,                                   /*��������ID             */
   PUBRS012             INTEGER,                                   /*�������ID             */
   PUBRS013             INTEGER,                                   /*��˾ID             */ 
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_PUBRS primary key (PUBRS_ID)
);
create unique index AK_TB_PUBRS on TB_PUBRS (PUBRS001,PUBRS002);
create sequence SEQ_TB_PUBRS minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBRS to public;
grant index  on TB_PUBRS to public;
grant update on TB_PUBRS to public; 
grant delete on TB_PUBRS to public;  
grant insert on TB_PUBRS to public; 
grant select on SEQ_TB_PUBRS to public;   