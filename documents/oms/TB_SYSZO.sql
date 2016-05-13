/*
================================================================================
��ṹ����:TB_SYSZO
��ṹ����:�޸ı��ֶμ�¼��־
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SYSZO;
drop table TB_SYSZO;
create table TB_SYSZO  (
   SYSZO_ID             INTEGER                         not null,  /*ID       */
   SYSZO001             VARCHAR2(32)                    not null,  /*�û��˺�         */
   SYSZO002             VARCHAR2(20),                              /*�ͻ���IP         */
   SYSZO003             VARCHAR2(64),                              /*�ͻ��˻�����     */
   SYSZO004             VARCHAR2(20),                              /*��ҵ���         */
   SYSZO005             VARCHAR2(20),                              /*���ĵı���       */
   SYSZO006             VARCHAR2(20),                              /*���ĵ��ֶ�       */
   SYSZO007             VARCHAR2(255),                             /*����ǰ�ֶ�ֵ     */
   SYSZO008             VARCHAR2(255),                             /*���ĺ��ֶ�ֵ     */
   SYSZO009             DATE,                                      /*��־����         */
   SYSZO010             VARCHAR2(255),                             /*�����ַ�         */
   constraint PK_TB_SYSZO primary key (SYSZO_ID)
);
create sequence SEQ_TB_SYSZO minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select,index,update,delete,insert on TB_SYSZO to public;
grant select on SEQ_TB_SYSZO to public;   