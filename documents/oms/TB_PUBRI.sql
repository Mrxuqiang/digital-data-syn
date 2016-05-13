/*
================================================================================
��ṹ����:TB_PUBRI
��ṹ����:���۽��ܷ���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBRI;
drop index AK_TB_PUBRI;
drop table TB_PUBRI;
create table TB_PUBRI  (
   PUBRI_ID             INTEGER                         not null,  /*���۽��ܷ�ID         */
   PUBRI001             INTEGER                         not null,  /*�ⲿ������ID         */
   PUBRI002             INTEGER                         not null,  /*�ⲿ�����ʲ�����ID   */
   PUBRI003             VARCHAR2(255),                             /*ժҪ                 */
   PUBRI004             INTEGER                         not null,  /*��ĿID               */
   PUBRI005             INTEGER                         not null,  /*����������ID         */
   PUBRI006             INTEGER,                                   /*����ID               */
   PUBRI007             VARCHAR2(1)                     not null,  /*����                 */
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_PUBRI primary key (PUBRI_ID)
);
create unique index AK_TB_PUBRI on TB_PUBRI (PUBRI004,PUBRI005);
create sequence SEQ_TB_PUBRI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBRI to public;
grant index  on TB_PUBRI to public;
grant update on TB_PUBRI to public; 
grant delete on TB_PUBRI to public;  
grant insert on TB_PUBRI to public; 
grant select on SEQ_TB_PUBRI to public;   