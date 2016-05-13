/*
================================================================================
��ṹ����:TB_PUBLO
��ṹ����:ƾ֤����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBLO;
drop index AK_TB_PUBLO;
drop table TB_PUBLO;
create table TB_PUBLO  (
   PUBLO_ID             INTEGER                         not null,  /*ƾ֤���ID           */
   PUBLO001             VARCHAR2(4)                     not null,  /*ƾ֤������         */
   PUBLO002             VARCHAR2(30)                    not null,  /*ƾ֤�������         */
   PUBLO003             VARCHAR2(30)                    not null,  /*ƾ֤�����         */
   PUBLO004             INTEGER,                                   /*Ĭ�ϱұ�ID           */
   PUBLO005             VARCHAR2(2),                               /*��������             */
   PUBLO006             VARCHAR2(255),                             /*���ƿ�Ŀ             */
   PUBLO007             VARCHAR2(255) ,                            /*���ƿ�Ŀ���             */
   PUBLO008             VARCHAR2(1),                               /*���                 */
   PUBLO009             INTEGER                         not null,  /*��������������ID   */
   PUBLO010             INTEGER ,                                  /*��������             */
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_PUBLO primary key (PUBLO_ID)
);
create unique index AK_TB_PUBLO on TB_PUBLO (PUBLO001);
create sequence SEQ_TB_PUBLO minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBLO to public;
grant index  on TB_PUBLO to public;
grant update on TB_PUBLO to public; 
grant delete on TB_PUBLO to public;  
grant insert on TB_PUBLO to public; 
grant select on SEQ_TB_PUBLO to public;   