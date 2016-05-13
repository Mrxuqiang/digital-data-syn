/*
================================================================================
��ṹ����:TB_PUBLI
��ṹ����:��Ŀ���Ͷ����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBLI;
drop index AK_TB_PUBLI;
drop table TB_PUBLI;
create table TB_PUBLI  (
   PUBLI_ID             INTEGER                         not null,  /*��Ŀ����ID           */
   PUBLI001             VARCHAR2(4)                     not null,  /*��Ŀ���ʹ���         */
   PUBLI002             VARCHAR2(30)                    not null,  /*��Ŀ��������         */
   PUBLI003             VARCHAR2(2)                     not null,  /*���Ĭ�Ϸ���         */
   PUBLI004             VARCHAR2(2)                     not null,  /*����ƽ�ⷽ��         */
   PUBLI005             VARCHAR2(2)                     not null,  /*���                 */
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_PUBLI primary key (PUBLI_ID)
);
create unique index AK_TB_PUBLI on TB_PUBLI (PUBLI001);
create sequence SEQ_TB_PUBLI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBLI to public;
grant index  on TB_PUBLI to public;
grant update on TB_PUBLI to public; 
grant delete on TB_PUBLI to public;  
grant insert on TB_PUBLI to public; 
grant select on SEQ_TB_PUBLI to public;   