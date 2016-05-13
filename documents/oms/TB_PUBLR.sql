/*
================================================================================
��ṹ����:TB_PUBLR
��ṹ����:�ֽ������춯��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBLR;
drop index AK_TB_PUBLR;
drop table TB_PUBLR;
create table TB_PUBLR  (
   PUBLR_ID             INTEGER                         not null,  /*�ֽ������춯ID     */
   PUBLR001             VARCHAR2(40)                    not null,  /*�춯����             */
   PUBLR002             VARCHAR2(200)                   not null,  /*�춯����             */
   PUBLR003             VARCHAR2(100),                             /*������               */
   PUBLR004             VARCHAR2(10),                              /*Ԥ���ֶ�                 */
   PUBLR005             VARCHAR2(200),                             /*��ע                 */
   PUBLR006             VARCHAR2(2)                     not null,  /*�Ƿ���             */
   PUBLR007             INTEGER                         not null,  /*��Ӧ�ֽ�������ID     */
   PUBLR008             INTEGER                         not null,  /*��ƿ�ĿID           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_PUBLR primary key (PUBLR_ID)
);
create unique index AK_TB_PUBLR on TB_PUBLR (PUBLR001,PUBLR002);
create sequence SEQ_TB_PUBLR minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBLR to public;
grant index  on TB_PUBLR to public;
grant update on TB_PUBLR to public; 
grant delete on TB_PUBLR to public;  
grant insert on TB_PUBLR to public; 
grant select on SEQ_TB_PUBLR to public;   