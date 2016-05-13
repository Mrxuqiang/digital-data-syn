/*
================================================================================
��ṹ����:TB_GLDAN
��ṹ����:�������������ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_GLDAN;
drop index AK_TB_GLDAN;
drop table TB_GLDAN;
create table TB_GLDAN  (
   GLDAN_ID             INTEGER                         not null,  /*����������ID         */
   GLDAN001             INTEGER                         not null,  /*����������ID                 */
   GLDAN002             INTEGER,                                  /*������ĿID                 */
   GLDAN003             VARCHAR2(255),                             /*����                 */
   GLDAN004             VARCHAR2(1),                               /*�б���         */
   GLDAN005             VARCHAR2(1),                               /*�б���             */
   GLDAN006             VARCHAR2(1000),                            /*����ѡ�����           */
   GLDAN007             VARCHAR2(1),                               /*ѡ��           */
   GLDAN008             VARCHAR2(1000),                            /*����ѡ��ID           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_GLDAN primary key (GLDAN_ID)
);
create sequence SEQ_TB_GLDAN minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GLDAN to public;
grant index  on TB_GLDAN to public;
grant update on TB_GLDAN to public; 
grant delete on TB_GLDAN to public;  
grant insert on TB_GLDAN to public; 
grant select on SEQ_TB_GLDAN to public;   